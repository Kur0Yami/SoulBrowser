.class Lcom/mycompany/app/image/ImageViewControl$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$22;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$22;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/mycompany/app/image/ImageViewControl$ControlListener;->x()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
