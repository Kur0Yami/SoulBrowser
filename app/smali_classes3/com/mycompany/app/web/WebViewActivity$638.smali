.class Lcom/mycompany/app/web/WebViewActivity$638;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$638;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$638;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->v3:Lcom/mycompany/app/view/MyScrollBar;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->I9(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->W9(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->J9(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->K9(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->L9(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->S9(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->X9(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->S0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->fa:Z

    .line 39
    .line 40
    return-void
.end method
