.class Lcom/mycompany/app/main/MainTxtView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$6;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget p1, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView$6;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTxtView;->M0()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/main/MainTxtView;->E2:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, v1, Lcom/mycompany/app/main/MainTxtView;->E2:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/mycompany/app/main/MainTxtView;->i2:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, v1, Lcom/mycompany/app/main/MainTxtView;->j2:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v5, Lcom/mycompany/app/main/MainTxtView$36;

    .line 29
    .line 30
    invoke-direct {v5, v1}, Lcom/mycompany/app/main/MainTxtView$36;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogSaveSource;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, v1, Lcom/mycompany/app/main/MainTxtView;->E2:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 38
    .line 39
    new-instance p1, Lcom/mycompany/app/main/MainTxtView$37;

    .line 40
    .line 41
    invoke-direct {p1, v1}, Lcom/mycompany/app/main/MainTxtView$37;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
