.class Lcom/mycompany/app/main/MainActivity$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$49;->a:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$49;->a:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->Y0:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {v1, v0, v0}, Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;->a(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$49;->a:Lcom/mycompany/app/main/MainActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->l0()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
