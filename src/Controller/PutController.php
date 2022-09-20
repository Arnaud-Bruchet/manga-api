<?php

namespace App\Controller;

use App\Repository\MangasRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

#[Route('/api/manga')]
class PutController extends AbstractController
{
    #[Route('/{manga}', name: 'api_put', methods: ['PUT', 'PATCH'])]
    public function put(
        Request $request,
        $manga,
        MangasRepository $mangasRepo,
    ): JsonResponse {

        $data = json_decode($request->getContent(), true);

        $oneManga = $mangasRepo->findOneBy(['id' => $manga]);

        if ($oneManga === null) {
            return $this->json(['message' => 'Manga non trouvé'], Response::HTTP_NOT_FOUND);
        }

        if ($request->getMethod() == 'PUT' and empty($data['name']) || empty($data['type']) || empty($data['author']) || empty($data['editor']) || empty($data['createdAt']) || empty($data['resume']) || empty($data['nbTomes']) || empty($data['image'])) {
            return $this->json(['message' => 'Merci de renseigner tous les champs'], Response::HTTP_BAD_REQUEST);
        }

        if (!empty($data['name'])) {
            $oneManga->setName($data['name']);
        };
        if (!empty($data['type'])) {
            $oneManga->setType($data['type']);
        };
        if (!empty($data['author'])) {
            $oneManga->setAuthor($data['author']);
        };
        if (!empty($data['editor'])) {
            $oneManga->setEditor($data['editor']);
        };
        if (!empty($data['createdAt'])) {
            $oneManga->setCreatedAt(new \DateTime($data['createdAt']));
        };
        if (!empty($data['resume'])) {
            $oneManga->setResume($data['resume']);
        };
        if (!empty($data['nbTomes'])) {
            $oneManga->setNbTomes($data['nbTomes']);
        };
        if (!empty($data['image'])) {
            $oneManga->setImage($data['image']);
        };

        $mangasRepo->add($oneManga, true);

        return $this->json([
            'manga' => $oneManga,
            'message' => 'Manga modifié avec succès',
            Response::HTTP_OK,
        ]);
    }
}
