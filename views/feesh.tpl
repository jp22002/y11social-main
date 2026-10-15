<script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Tailwind CSS Carousel - Fixed Arrows</title>
  <script src="https://jsdelivr.net"></script>
</head>
<body class="m-0 p-12 font-sans">
  <h1 class="text-center text-3xl font-bold mb-6 text-gray-800">
    CSS carousel multiple items per page
  </h1>
  <ul class="flex w-full h-[300px] p-2.5 m-0 overflow-x-auto snap-x snap-mandatory [scrollbar-width:none] [&::-webkit-scrollbar]:hidden [anchor-name:--my-carousel] [scroll-marker-group:after]   
             /* Global scroll-button configuration */
             [&::scroll-button(*)]:border-0 
             [&::scroll-button(*)]:text-3xl 
             [&::scroll-button(*)]:bg-none 
             [&::scroll-button(*)]:text-black 
             [&::scroll-button(*)]:opacity-70 
             [&::scroll-button(*)]:cursor-pointer 
             [&::scroll-button(*)]:absolute 
             [&::scroll-button(*)]:position-anchor[--my-carousel] 
             [&::scroll-button(*)]:top-1/2 
             [&::scroll-button(*)]:-translate-y-1/2 
             [&::scroll-button(*)]:z-10
             
             /* Hover/Focus/Disabled state buttons */
             [&:scroll-button(*):hover]:opacity-100 
             [&:scroll-button(*):focus]:opacity-100
             [&::scroll-button(*):disabled]:opacity-20 
             [&::scroll-button(*):disabled]:cursor-default
             
             /* Left button position & content (Anchored to the Left Side) */
             [&::scroll-button(left)]:content-['◄'] 
             [&::scroll-button(left)]:left-[calc(anchor(left)-40px)]
             
             /* Right button position & content (Anchored to the Right Side) */
             [&::scroll-button(right)]:content-['►'] 
             [&::scroll-button(right)]:right-[calc(anchor(right)-40px)]
             
             /* Marker Group Container placement */
             [&::scroll-marker-group]:flex 
             [&::scroll-marker-group]:justify-center 
             [&::scroll-marker-group]:gap-2 
             [&::scroll-marker-group]:mt-4">
    <li class="list-none flex-[0_0_calc(33.333%-20px)] min-w-[200px] h-full bg-[#eeeeee] border border-[#dddddd] p-5 mx-2.5 rounded-lg snap-start even:bg-cyan-100
               [&::scroll-marker]:content-[''] [&::scroll-marker]:w-3 [&::scroll-marker]:h-3 [&::scroll-marker]:rounded-full [&::scroll-marker]:bg-gray-400 [&::scroll-marker]:cursor-pointer [&::scroll-marker:checked]:bg-black">
      <h2 class="text-xl font-semibold">Item 1</h2>
    </li>
    <li class="list-none flex-[0_0_calc(33.333%-20px)] min-w-[200px] h-full bg-[#eeeeee] border border-[#dddddd] p-5 mx-2.5 rounded-lg snap-start even:bg-cyan-100
               [&::scroll-marker]:content-[''] [&::scroll-marker]:w-3 [&::scroll-marker]:h-3 [&::scroll-marker]:rounded-full [&::scroll-marker]:bg-gray-400 [&::scroll-marker]:cursor-pointer [&::scroll-marker:checked]:bg-black">
      <h2 class="text-xl font-semibold">Item 2</h2>
    </li>
    <li class="list-none flex-[0_0_calc(33.333%-20px)] min-w-[200px] h-full bg-[#eeeeee] border border-[#dddddd] p-5 mx-2.5 rounded-lg snap-start even:bg-cyan-100
               [&::scroll-marker]:content-[''] [&::scroll-marker]:w-3 [&::scroll-marker]:h-3 [&::scroll-marker]:rounded-full [&::scroll-marker]:bg-gray-400 [&::scroll-marker]:cursor-pointer [&::scroll-marker:checked]:bg-black">
      <h2 class="text-xl font-semibold">Item 3</h2>
    </li>
    <li class="list-none flex-[0_0_calc(33.333%-20px)] min-w-[200px] h-full bg-[#eeeeee] border border-[#dddddd] p-5 mx-2.5 rounded-lg snap-start even:bg-cyan-100
               [&::scroll-marker]:content-[''] [&::scroll-marker]:w-3 [&::scroll-marker]:h-3 [&::scroll-marker]:rounded-full [&::scroll-marker]:bg-gray-400 [&::scroll-marker]:cursor-pointer [&::scroll-marker:checked]:bg-black">
      <h2 class="text-xl font-semibold">Item 4</h2>
    </li>
    <li class="list-none flex-[0_0_calc(33.333%-20px)] min-w-[200px] h-full bg-[#eeeeee] border border-[#dddddd] p-5 mx-2.5 rounded-lg snap-start even:bg-cyan-100
               [&::scroll-marker]:content-[''] [&::scroll-marker]:w-3 [&::scroll-marker]:h-3 [&::scroll-marker]:rounded-full [&::scroll-marker]:bg-gray-400 [&::scroll-marker]:cursor-pointer [&::scroll-marker:checked]:bg-black">
      <h2 class="text-xl font-semibold">Item 5</h2>
    </li>
    <li class="list-none flex-[0_0_calc(33.333%-20px)] min-w-[200px] h-full bg-[#eeeeee] border border-[#dddddd] p-5 mx-2.5 rounded-lg snap-start even:bg-cyan-100
               [&::scroll-marker]:content-[''] [&::scroll-marker]:w-3 [&::scroll-marker]:h-3 [&::scroll-marker]:rounded-full [&::scroll-marker]:bg-gray-400 [&::scroll-marker]:cursor-pointer [&::scroll-marker:checked]:bg-black">
      <h2 class="text-xl font-semibold">Item 6</h2>
    </li>
  </ul>

</body>
</html>