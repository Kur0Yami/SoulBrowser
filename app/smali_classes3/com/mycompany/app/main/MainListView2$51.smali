.class Lcom/mycompany/app/main/MainListView2$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$51;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2$51;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView2;->j0:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->dismiss()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Lcom/mycompany/app/main/MainListView2;->j0:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
