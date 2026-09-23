.class Lcom/mycompany/app/image/ImageTransView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageTransView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageTransView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageTransView$2;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageTransView$2;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/mycompany/app/image/ImageTransView;->I:Z

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/mycompany/app/image/ImageTransView;->q:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/mycompany/app/image/ImageTransView;->a(Lcom/mycompany/app/image/ImageTransView;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return v0
.end method
