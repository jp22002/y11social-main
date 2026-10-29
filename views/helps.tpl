<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width">
		<title>define page</title>
    </head>
    <body class="bg-[#1B2A41] display: none;">
        <nav id="navbar" class="bg-[#324A5F] border-b-[1vw] border-b-[#0C1821] pt-[1.1vw] pb-[1.1vw]">
            <div class="flex text-[2.4vw]">
                <div class="ml-[9.6vw] text-[#CCC9DC]">
                    <a href="/" class="no-underline text-black">
                        <div class="text-[#CCC9DC] decoration-none decoration-[#0C1821] border-[1vw] border-[#0C1821] bg-[#0C1821] rounded-[2vw] w-[13vw] text-center">
                            homepage
                        </div>
                    </a>
                </div>
                <div class="ml-[9.6vw] text-[#CCC9DC]">
                    <a href="/define" class="no-underline text-black">
                        <div class="text-[#CCC9DC] decoration-none decoration-[#0C1821] border-[1vw] border-[#0C1821] bg-[#0C1821]  rounded-[2vw] w-[13vw] text-center">
                            define
                        </div>
                    </a>
                </div>
                <div class="ml-[9.6vw] text-[#CCC9DC]">
                    <a href="/problem" class="no-underline text-black">
                        <div class="text-[#CCC9DC] decoration-none decoration-[#0C1821] border-[1vw] border-[#0C1821] bg-[#0C1821]  rounded-[2vw] w-[13vw] text-center">
                            problem
                        </div>
                    </a>
                </div>
                <div class="ml-[9.6vw] text-[#CCC9DC]">
                    <a href="/action" class="no-underline text-black">
                        <div class="text-[#CCC9DC] decoration-none decoration-[#0C1821] border-[1vw] border-[#0C1821] bg-[#0C1821]  rounded-[2vw] w-[13vw] text-center">
                            action
                        </div>
                    </a>
                </div>
            </div>
        </nav>
        <div class="bg-[#1B2A41]">
            <div class="bg-[#0C1821] text-[#CCC9DC] ">
                If you need help...
            </div>
            <div id="older"> 

            </div>
            <div id="young"> 

            </div>
        </div>
    </body>
</html>



<script>
    helplinedic = {
        "general_helplines": {
            "AR": "+5402234930430",
            "AU": "131114",
            "AT": "017133374",
            "BE": "106",
            "BW": "3911270",
            "BR": "188",
            "CA": "suicide and crisis hotline",
            "CL": "+5642221200",
            "CN": "08008101117",
            "HR": "014833888",
            "DK": "70201201",
            "EC": "+59326000477",
            "EG": "7621602",
            "FI": "0925250111",
            "FR": "0145394000",
            "DE": "08001110111",
            "HN": "150",
            "HK": "28960000",
            "IS": "1717",
            "IN": "9152987821",
            "IE": "116123",
            "IT": "800860022",
            "JP": "0570783556",
            "MX": "8009112000",
            "NL": "113",
            "NZ": "1737",
            "NO": "116123",
            "PE": "+5112738026",
            "PH": "028969191",
            "PL": "5270000",
            "RU": "0078202577577",
            "ZA": "0800567567",
            "KR": "109",
            "SE": "90101",
            "TW": "1925",
            "GB": "116123",
            "US": "suicide and crisis hotline"
        },
        "youth_helplines": {
            "AR": "102",
            "AU": "1800551800",
            "AT": "147",
            "BE": "102",
            "BW": "116111",
            "BR": "100",
            "CA": "18006686868",
            "CL": "147",
            "CN": "12355",
            "HR": "116111",
            "DK": "116111",
            "EC": "1800244537",
            "EG": "16000",
            "FI": "116111",
            "FR": "119",
            "DE": "116111",
            "HN": "110",
            "HK": "23388333",
            "IS": "1717",
            "IN": "1098",
            "IE": "116111",
            "IT": "114",
            "JP": "0120007830",
            "MX": "5552813333",
            "NL": "08000432",
            "NZ": "0800968845",
            "NO": "116111",
            "PE": "1810",
            "PH": "163",
            "PL": "116111",
            "RU": "88002000122",
            "ZA": "0800055555",
            "KR": "1388",
            "SE": "116111",
            "TW": "1995",
            "GB": "08001111",
            "US": "18004224453"
        }
    }

    const older = document.getElementById('older')
    const young = document.getElementById('young')

    fetch("https://api.country.is")
    .then(response => response.json())
    .then(data => {
        console.log(data.country);

        older.textContent = helplinedic?.["general_helplines"]?.[data.country] || "No helpline available";

        young.textContent = helplinedic?.["youth_helplines"]?.[data.country] || "No helpline available";
    })
    .catch(error => {
        console.error("Error fetching location:", error);
    });
</script>
