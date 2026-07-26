from django.http import JsonResponse
import time

def heavy_computation(request):
    start_time = time.time()
    
    total = 0
    for i in range(15_000_000):
        total += (i * i) % 7
        
    duration = time.time() - start_time
    return JsonResponse({
        "status": "success",
        "result": total,
        "duration_seconds": duration,
        "engine": "Cinder JIT"
    })