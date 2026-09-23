.class Lcom/mycompany/app/dialog/DialogWebView$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$39;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$39;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->w1:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->w1:Lcom/mycompany/app/view/MyCoverView;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->w1:Lcom/mycompany/app/view/MyCoverView;

    .line 20
    .line 21
    return-void
.end method
