.class Lcom/mycompany/app/dialog/DialogDownList$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$17;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/load/engine/GlideException;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$17;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownList;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const v1, -0x70708

    .line 10
    .line 11
    .line 12
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 15
    .line 16
    .line 17
    return v0
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method
