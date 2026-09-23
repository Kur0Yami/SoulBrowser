.class Lcom/mycompany/app/view/MyIconView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyIconView$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyIconView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconView$1$1;->c:Lcom/mycompany/app/view/MyIconView$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconView$1$1;->c:Lcom/mycompany/app/view/MyIconView$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyIconView$1;->c:Lcom/mycompany/app/view/MyIconView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyIconView;->o:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/view/MyIconView;->o:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyIconView;->c:Z

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/high16 v1, -0x10000

    .line 26
    .line 27
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookSearch;->e(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
