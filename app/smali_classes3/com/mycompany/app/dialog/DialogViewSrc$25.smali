.class Lcom/mycompany/app/dialog/DialogViewSrc$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewSrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$25;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$25;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v2, v2}, Lcom/mycompany/app/view/MyScrollBar;->p(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->p0:Z

    .line 12
    .line 13
    return-void
.end method
