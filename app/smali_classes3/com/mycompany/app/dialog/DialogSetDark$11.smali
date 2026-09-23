.class Lcom/mycompany/app/dialog/DialogSetDark$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$11;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogSetDark;->y0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$11;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetDark;->D()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetDark;->y0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$11;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDark;->D()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 9
    .line 10
    const-string v1, "com.google.android.webview"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onCancel()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetDark;->y0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$11;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDark;->D()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
