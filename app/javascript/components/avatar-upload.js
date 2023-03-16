export class AvatarUpload {
  constructor(avatarUploadWrapper) {
    this.label = avatarUploadWrapper.querySelector('.js-avatar-upload-label');
    this.image = avatarUploadWrapper.querySelector('.js-avatar-upload-image');
    this.input = avatarUploadWrapper.querySelector('.js-avatar-upload-input');

    this.setupEventListeners();
  }

  setupEventListeners() {
    this.input.addEventListener('change', (e) => {
      if (this.input.files) {
        this.setImage();
      }
    });
  }

  setImage() {
    const avatar = this.input.files[0];
    const reader = new FileReader();
    reader.addEventListener('load', (e) => {
      this.image.src = e.target.result;
    });
    reader.readAsDataURL(avatar);
  }
}
