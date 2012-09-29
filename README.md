# Sexy Dotfiles


The idea is to have a simple way to encrypt/decrypt your .dotfiles (for those with AWS creds, etc) :

- toencrypt -> contains the dotfiles you want to encrypt (using massencrypt.sh)

- toencrypt/pass -> passphrase used to encrypt/decrypt your files (using massencrypt.sh)

- encrypted -> your dotfiles encrypted, can be safely checked in

- decrypted -> used as a temporary place to then symlink those in your home folder

- install.sh -> do the magic

- massencrypt.sh -> helper to mass encrypt your files directly


Make sure to look at .gitignore for easier understanding…\


Don't bother forking that stuff, it's not **sexy** yet.



# LICENSE & AUTHOR:

Author:: Anthony Scalisi (scalisi.a@gmail.com)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.



