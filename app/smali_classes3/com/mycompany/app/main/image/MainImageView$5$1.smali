.class Lcom/mycompany/app/main/image/MainImageView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageView$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageView$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$5$1;->c:Lcom/mycompany/app/main/image/MainImageView$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView$5$1;->c:Lcom/mycompany/app/main/image/MainImageView$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView$5;->a:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->N:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImageView;->N:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/mycompany/app/main/image/MainImageView;->c(Lcom/mycompany/app/main/image/MainImageView;Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
