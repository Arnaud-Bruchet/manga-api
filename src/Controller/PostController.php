<?php

namespace App\Controller;

use App\Entity\Mangas;
use App\Repository\MangasRepository;
use DateTime;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/api')]
class PostController extends AbstractController
{
    #[Route('/post', name: 'api_post', methods: ['POST'])]
    public function post(
        Request $request,
        MangasRepository $mangaRepo,
        SerializerInterface $serializer,
    ): JsonResponse {

        $manga = $serializer->deserialize($request->getContent(), Mangas::class, 'json');
        $mangaRepo->add($manga, true);

        return $this->json([
            'manga' => $manga,
        ]);
    }
}
