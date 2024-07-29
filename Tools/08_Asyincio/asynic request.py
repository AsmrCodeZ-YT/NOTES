import time
import asyncio
import httpx

async def main():
	urls = [
	"url1",
	"url2",
	"url3"
	]
	tasks = []
	async with httpx.AsyncClient() as client:
		for url in urls:
			tasks.append(client.get(url))
		res = await asyncio.gather(*task)
		print(res)

if __name__ == "__main__":
	start = time.time()
	# asyncio
	asyncio.run( main() )
	
	end = time.time()
	print(end - start)

    



