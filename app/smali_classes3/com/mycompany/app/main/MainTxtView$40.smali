.class Lcom/mycompany/app/main/MainTxtView$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$40;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$40;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->G2:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekText;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->G2:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainTxtView;->E0(Lcom/mycompany/app/main/MainTxtView;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
