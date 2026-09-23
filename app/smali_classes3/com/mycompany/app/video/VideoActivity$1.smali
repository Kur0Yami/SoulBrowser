.class Lcom/mycompany/app/video/VideoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainActivity$MainViewerListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$1;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$1;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iput p1, v0, Lcom/mycompany/app/video/VideoActivity;->C1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1, p1}, Lcom/mycompany/app/video/VideoControl;->setNaviHeight(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoControl;->A()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
