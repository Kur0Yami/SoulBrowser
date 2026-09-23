.class Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient$3;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient$3;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, -0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lcom/mycompany/app/web/WebNestView;->j(ZILcom/mycompany/app/web/WebNestView$WebStyleListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
