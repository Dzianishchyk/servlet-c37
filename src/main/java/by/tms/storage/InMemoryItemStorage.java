package by.tms.storage;

import by.tms.model.Item;

import java.util.ArrayList;
import java.util.List;

public class InMemoryItemStorage {
    private static List<Item> items = new ArrayList<>();

    private static InMemoryItemStorage inMemoryItemStorage;

    private InMemoryItemStorage(){

    }

    public static InMemoryItemStorage getInstance() {
        if (inMemoryItemStorage == null){
            inMemoryItemStorage = new InMemoryItemStorage();
            return inMemoryItemStorage;
        }
        return inMemoryItemStorage;
    }

    {
        items.add(new Item( "Test", "Test", 22));
        items.add(new Item( "Test2", "Test2", 22));
        items.add(new Item( "Test3", "Test3", 22));
    }

    public List<Item> getAll(){
        return new ArrayList<>(items);
    }

    public Item getById(int id){
        for (Item item : items) {
            if (item.getId() == id) return item;
        }
        return null;
    }

    public boolean save(Item item){
        if (items.contains(item)) {
            return false;
        }
        items.add(item);
        return true;
    }
}
