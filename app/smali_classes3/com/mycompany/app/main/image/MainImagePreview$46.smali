.class Lcom/mycompany/app/main/image/MainImagePreview$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:Landroid/graphics/Bitmap;

.field public final synthetic h:Landroid/graphics/drawable/PictureDrawable;

.field public final synthetic i:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->i:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->f:Ljava/io/File;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->g:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->h:Landroid/graphics/drawable/PictureDrawable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->g:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->h:Landroid/graphics/drawable/PictureDrawable;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->i:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview$46;->f:Ljava/io/File;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 17
    .line 18
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
