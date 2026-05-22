
$content = Get-Content -Path index.html -Raw
$newStyle = @"
    /* FLOATING WA */
    .floating-wa {
      position: fixed;
      bottom: 30px;
      right: 30px;
      background-color: #25D366;
      width: 65px;
      height: 65px;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      color: white;
      text-decoration: none;
      box-shadow: 0 4px 15px rgba(37, 211, 102, 0.4);
      z-index: 1000;
      animation: bounce 2s infinite;
      transition: transform 0.3s;
    }
    .floating-wa:hover {
      transform: scale(1.1);
      animation: none;
    }
    .floating-wa svg {
      width: 35px;
      height: 35px;
      fill: #fff;
    }
"@

$content = $content -replace '/\* FLOATING WA \*/[\s\S]*?@keyframes bounce \{[\s\S]*?\}', $newStyle
Set-Content -Path index.html -Value $content

