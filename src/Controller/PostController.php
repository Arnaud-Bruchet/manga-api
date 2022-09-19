<?php

namespace App\Controller;

use App\Entity\Mangas;
use App\Repository\MangasRepository;
use DateTime;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

#[Route('/api/manga')]
class PostController extends AbstractController
{
    #[Route('/new', name: 'api_post', methods: ['POST'])]
    public function new(
        Request $request,
        MangasRepository $mangasRepository,
    ): JsonResponse {
        $data = json_decode($request->getContent(), true);

        $mangaAlreadyExist = $mangasRepository->findOneBy(['name' => $data['name']]);

        if ($mangaAlreadyExist !== null) {
            return $this->json(['message' => 'Manga déjà existant'], Response::HTTP_SEE_OTHER);
        }

        if (empty($data['name']) || empty($data['type']) || empty($data['author']) || empty($data['editor']) || empty($data['createdAt']) || empty($data['resume']) || empty($data['nbTomes']) || empty($data['image'])) {
            return $this->json(['message' => 'Tous les champs doivent être renseignés'], Response::HTTP_BAD_REQUEST);
        }

        $name = $data['name'];
        $type = $data['type'];
        $author = $data['author'];
        $editor = $data['editor'];
        $date = new \DateTime($data['createdAt']);
        $resume = $data['resume'];
        $nbTomes = $data['nbTomes'];
        $image = $data['image'];

        $newManga = new Mangas();
        $newManga->setName($name)
            ->setType($type)
            ->setAuthor($author)
            ->setEditor($editor)
            ->setCreatedAt($date)
            ->setResume($resume)
            ->setNbTomes($nbTomes)
            ->setImage($image);

        $mangasRepository->add($newManga, true);

        return $this->json([
            'manga' => $newManga,
            'message' => 'Manga ajouté avec succès',
            Response::HTTP_CREATED,
        ]);
    }
}
