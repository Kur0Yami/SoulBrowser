.class Lcom/mycompany/app/setting/SettingListAdapter$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingListAdapter$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingListAdapter$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingListAdapter$12$1;->c:Lcom/mycompany/app/setting/SettingListAdapter$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter$12$1;->c:Lcom/mycompany/app/setting/SettingListAdapter$12;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingListAdapter$12;->g:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingListAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingListAdapter$12;->c:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingListAdapter$12;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
