.class Lcom/mycompany/app/dialog/DialogNewsLocale$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$25;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->S0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$25;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogNewsLocale;->F()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->N0:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->N0:Z

    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsLocale$26;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogNewsLocale$26;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
