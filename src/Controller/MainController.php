<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class MainController extends AbstractController
{
    #[Route('/api', name: 'app_main')]
    public function index(): JsonResponse
    {
        return $this->json([
            'message' => 'Hello !! Justine',
        ]);
    }
}
