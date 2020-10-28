class ListNode {
  constructor(value, previous, next) {
    this.value = value;
    this.next = next;
    this.previous = previous;
  }
}

export class LinkedList {
  constructor(head = null) {
    this.head = head;
  }

  // insert value at back (end?)
  push(value) {
    const lastNode = this.traverse();
    const newNode = new ListNode(value, lastNode, null);
    if (this.head == null) {
      this.head = newNode;
    } else {
      lastNode.next = newNode;
    }
  }

  // remove value at back (off the end) (return the value of that node)
  pop() {
    const lastNode = this.traverse();
    const valueToReturn = lastNode.value;
    if (lastNode.previous) {
      lastNode.previous.next = null;
    } else {
      this.head = null;
    }
    return valueToReturn;
  }

  // remove value at front (this.head)
  shift() {
    const valueToReturn = this.head.value;
    this.head = this.head.next;
    if (this.head) {
      this.head.previous = null;
    }
    return valueToReturn;
  }

  // insert value at front (this.head)
  unshift(value) {
    const newNode = new ListNode(value, null, this.head);
    if (this.head) {
      this.head.previous = newNode;
    }
    this.head = newNode;
  }

  // delete the first occurence of a specified value
  delete(value, node = this.head) {
    // if the value matches the value we're trying to delete
    if (node.value == value) {
      // if this is the only node, set head to null
      if (!node.previous && !node.next) {
        this.head = null;
      } else
      // if this is the first node of more nodes, update the head 
      if (!node.previous && node.next) {
        this.head = node.next;
      } 
      // if there is a node after this one
      if (node.next) {
        // remove the pointer to the node being deleted
        node.next.previous = null;
      }
      // if there is a node before this
      if (node.previous) {
        // remove the pointer to the node being deleted
        node.previous.next = null;
      }
      // if there is a node before and after this, update both
      if (node.previous && node.next) {
        node.previous.next = node.next;
        node.next.previous = node.previous;
      }
      // "delete" this node
      node = null;
      // stop the loop
      return;
    } else {
      // if there are more nodes
      if (node.next) {
        // call this recursivly
        return this.delete(value, node.next);
      } else {
        // if there are no more nodes, and we didn't find anything
        // delete nothing and end loop
        return;
      }
    }
  }

  traverse(node = this.head) {
    if (node == null || node.next == null) {
      return node;
    } else {
      return this.traverse(node.next);
    }
  }

  count() {
    let size = 0;
    let node = this.head;
    while (node) {
      size++;
      node = node.next;
    }
    return size;
  }
}

const list = new LinkedList();

list.push(10);

list.push(20);
console.log(list);
list.delete(10);
console.log(list);
console.log(list.count()); // 1
console.log(list.pop()); // 20
