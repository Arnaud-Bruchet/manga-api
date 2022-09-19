<?php

namespace App\Controller;

use App\Repository\MangasRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/api/manga')]
class DeleteController extends AbstractController
{
    #[Route('/{manga}', name: 'app_delete', methods: 'DELETE')]
    public function delete(
        $manga,
        MangasRepository $mangasRepo,
    ): JsonResponse {

        $oneManga = $mangasRepo->findOneBy(['id' => $manga]);

        if ($oneManga === null) {
            return $this->json(['message' => 'Manga non trouvé'], Response::HTTP_NOT_FOUND);
        }

        $mangasRepo->remove($oneManga, true);

        return $this->json(['message' => 'Manga supprimé avec succès', Response::HTTP_NO_CONTENT]);
    }
}
