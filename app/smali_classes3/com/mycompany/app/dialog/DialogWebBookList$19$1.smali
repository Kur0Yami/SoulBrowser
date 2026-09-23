.class Lcom/mycompany/app/dialog/DialogWebBookList$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Landroid/graphics/Bitmap;

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogWebBookList$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList$19;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$19$1;->g:Lcom/mycompany/app/dialog/DialogWebBookList$19;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookList$19$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookList$19$1;->f:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$19$1;->g:Lcom/mycompany/app/dialog/DialogWebBookList$19;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookList$19;->a:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookList$19$1;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebBookList$19$1;->f:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/db/book/DbBookWeb;->o(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookList$19$1$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebBookList$19$1$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList$19$1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
