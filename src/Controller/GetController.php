<?php

namespace App\Controller;

use App\Repository\MangasRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/api')]
class GetController extends AbstractController
{
    #[Route('/mangas', name: 'app_get', methods: 'GET')]
    public function index(
        MangasRepository $mangasRepo,
    ): JsonResponse {

        $mangas = $mangasRepo->findAll();

        return $this->json([
            'mangas' => $mangas,
        ]);
    }

    #[Route('/manga/{manga}', name: 'get_manga', methods: 'GET')]
    public function get(
        $manga,
        MangasRepository $mangasRepo,
    ): Response {
        $manga = $mangasRepo->findOneBy(['id' => $manga]);

        if ($manga === null) {
            return $this->json(null, Response::HTTP_NOT_FOUND);
        }

        return $this->json($manga, Response::HTTP_OK);
    }
}
