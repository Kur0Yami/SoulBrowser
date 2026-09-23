.class Lcom/mycompany/app/dialog/DialogUrlLink$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:Landroid/graphics/Bitmap;

.field public final synthetic h:Landroid/graphics/drawable/PictureDrawable;

.field public final synthetic i:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->i:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->f:Ljava/io/File;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->g:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->h:Landroid/graphics/drawable/PictureDrawable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->i:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->g:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->h:Landroid/graphics/drawable/PictureDrawable;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogUrlLink$36;->f:Ljava/io/File;

    .line 17
    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 22
    .line 23
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
