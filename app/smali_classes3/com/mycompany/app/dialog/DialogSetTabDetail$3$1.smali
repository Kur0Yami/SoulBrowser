.class Lcom/mycompany/app/dialog/DialogSetTabDetail$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$3$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$3$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$3;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->b1:Lcom/mycompany/app/view/GlideRequests;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->b1:Lcom/mycompany/app/view/GlideRequests;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->dev_cat:I

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method
