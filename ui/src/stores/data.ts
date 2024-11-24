import { defineStore } from 'pinia'

export const useDataStore = defineStore('data', {
  state: () => {
    return { 
        show: false,
     }
  },
  actions: {
    setShow(value: boolean) {
        this.show = value;
    },
  },
})