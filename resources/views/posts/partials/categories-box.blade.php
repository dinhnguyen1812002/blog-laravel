<div id="recommended-topics-box">
    <h3 class="text-lg font-semibold text-gray-900 mb-3 gap-2">Recommended Topics</h3>
    <div class="topics flex flex-wrap justify-start">
        @foreach ($categories as $category)
            <x-badge wire:navigate href="{{ route('post.index',['category'=>$category->title]) }}" :textColor="$category->text_color" :bgColor="$category->bg_color">{{ $category->title }}</x-badge>
        @endforeach
    </div>
</div>
