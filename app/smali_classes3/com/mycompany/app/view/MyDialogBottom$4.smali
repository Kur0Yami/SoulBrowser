.class Lcom/mycompany/app/view/MyDialogBottom$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyDialogBottom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$4;->a:Lcom/mycompany/app/view/MyDialogBottom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$4;->a:Lcom/mycompany/app/view/MyDialogBottom;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyDialogBottom$4$1;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyDialogBottom$4$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom$4;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
