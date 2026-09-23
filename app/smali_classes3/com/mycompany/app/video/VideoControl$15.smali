.class Lcom/mycompany/app/video/VideoControl$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$15;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl$15;->c:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/video/VideoControl;->D:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/mycompany/app/video/VideoControl;->k(Lcom/mycompany/app/video/VideoControl;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/video/VideoControl;->l(Lcom/mycompany/app/video/VideoControl;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
