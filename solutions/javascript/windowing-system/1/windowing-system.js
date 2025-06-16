// @ts-check

export function Size(width = 80, height = 60) {
  this.width = width;
  this.height = height;
}

Size.prototype.resize = function (newWidth, newHeight) {
  this.width = newWidth;
  this.height = newHeight;
}

export function Position(x = 0, y = 0) {
  this.x = x;
  this.y = y;
}

Position.prototype.move = function (newX, newY) {
  this.x = newX;
  this.y = newY;
}

export class ProgramWindow {
  constructor() {
    this.screenSize = new Size(800, 600);
    this.size = new Size();
    this.position = new Position();
  }

  resize(newSize) {
    const newWidth = this.#clipWidthToScreen(newSize.width);
    const newHeight = this.#clipHeightToScreen(newSize.height);
    this.size.resize(newWidth, newHeight);
  }

  move(newPosition) {
    const newX = this.#clipXToScreen(newPosition.x);
    const newY = this.#clipYToScreen(newPosition.y);
    this.position.move(newX, newY);
  }

  #clipHeightToScreen(height) {
    if (height < 1) {
      return 1;
    }
    if (height + this.position.y > this.screenSize.height) {
      return this.screenSize.height - this.position.y;
    }
    return height;
  }

  #clipWidthToScreen(width) {
    if (width < 1) {
      return 1;
    }
    if (width + this.position.x > this.screenSize.width) {
      return this.screenSize.width - this.position.x;
    }
    return width;
  }

  #clipYToScreen(y) {
    if (y < 0) {
      return 0
    }
    if (y + this.size.height > this.screenSize.height) {
      return this.screenSize.height - this.size.height;
    }
    return y;
  }

  #clipXToScreen(x) {
    if (x < 0) {
      return 0
    }
    if (x + this.size.width > this.screenSize.width) {
      return this.screenSize.width - this.size.width;
    }
    return x;
  }
}

export function changeWindow(programWindow) {
  programWindow.resize(new Size(400, 300));
  programWindow.move(new Position(100, 150));
  return programWindow;
}
