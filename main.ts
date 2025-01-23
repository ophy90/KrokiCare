import { serve } from "https://deno.land/std@0.218.2/http/server.ts";

const handler = (req: Request): Response => {
  return new Response("Hello from Deno!", { status: 200 });
};

console.log("Server running on http://localhost:8000");
serve(handler, { port: 8000 });
