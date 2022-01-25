from ninja import NinjaAPI

api = NinjaAPI()

@api.get("/add")
async def add(request, a: int, b: int):
    return {"result": a + b}