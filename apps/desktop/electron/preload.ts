import { contextBridge } from "electron";

contextBridge.exposeInMainWorld("appInfo", {
  name: "Restaurante Pro Desktop",
  version: "1.0.0"
});
