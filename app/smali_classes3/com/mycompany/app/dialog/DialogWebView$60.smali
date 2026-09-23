.class Lcom/mycompany/app/dialog/DialogWebView$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$60;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$60;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->R1:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogGuideArea;->dismiss()V

    .line 17
    .line 18
    .line 19
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->R1:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 20
    .line 21
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-direct {v1, v3, v4, v2}, Lcom/mycompany/app/dialog/DialogGuideArea;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->R1:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$62;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$62;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
