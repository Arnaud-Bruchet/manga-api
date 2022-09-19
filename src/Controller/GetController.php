<?php

namespace App\Controller;

use App\Repository\MangasRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/api')]
class GetController extends AbstractController
{
    #[Route('/', name: 'app_get', methods: 'GET')]
    public function get(
        MangasRepository $mangasRepo,
    ): JsonResponse {

        $mangas = $mangasRepo->findAll();

        return $this->json([
            'mangas' => $mangas,
        ]);
    }
}
