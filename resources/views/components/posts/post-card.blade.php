@props(['post'])
<div {{ $attributes }} class="border border-gray-300 rounded-xl p-4">
    <a wire:navigate href="{{ route('post.show',$post->slug)}}">
        <div>
            <img class="w-full rounded-xl" src="{{ asset ('storage/'. $post->image) }}">
        </div>
    </a>
    <hr>
    <div class="mt-3">
        <div class="flex items-center mb-2 gap-x-2">
            @if ($category = $post->categories->first())
                <x-posts.category-badge :category="$category" />
            @endif
            <p class="text-sm text-gray-500">{{ $post->published_at }}</p>
        </div>
        <a wire:navigate href="{{ route('post.show', $post->slug)}}" class="text-xl font-bold text-gray-900">
            {{ $post->title }}
        </a>
    </div>
</div>
