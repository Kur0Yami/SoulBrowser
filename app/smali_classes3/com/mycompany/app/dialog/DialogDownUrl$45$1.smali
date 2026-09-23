.class Lcom/mycompany/app/dialog/DialogDownUrl$45$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$45;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$45;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$45$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$45;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$45$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$45;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$45;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->y1:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x1:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 11
    .line 12
    const-class v3, Landroid/graphics/drawable/PictureDrawable;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x1:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 21
    .line 22
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s2:Lcom/bumptech/glide/request/RequestListener;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->E0:Lcom/mycompany/app/view/MyRoundImage;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->X0:Ljava/lang/String;

    .line 47
    .line 48
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s2:Lcom/bumptech/glide/request/RequestListener;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->E0:Lcom/mycompany/app/view/MyRoundImage;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
