import time 
import asyncio

async def call_digikala():
	print("Start Calling Digikala")
	await asyncio.sleep(3) 
	print("Done  Calling Digikala")

async def get_posgress():
	print("Start Calling posgress")
	await asyncio.sleep(2) 
	print("Done  Calling posgress")
	
async def main():
	start = time.time()
	await asyncio.gather(call_digikala(), get_posgress())
	
	end = time.time()
	print(end - start)
if __name__ == "__main__":
	asyncio.run( main() )