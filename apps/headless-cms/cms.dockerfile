FROM directus/directus:10.2.1

USER root
COPY ./apps/headless-cms/extensions /directus/extensions

RUN corepack enable \
    && corepack prepare pnpm@8.5.1 --activate

USER node
# RUN pnpm install directus-extension-editorjs other-extensions
RUN pnpm i moment uuid
RUN pnpm i directus-extension-schema-management-module
RUN pnpm i directus-extension-field-actions
