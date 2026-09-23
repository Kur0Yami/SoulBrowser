.class Lcom/mycompany/app/dialog/DialogEditCmd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditCmd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd$4;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd$4;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 2
    .line 3
    const-string v0, "^"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/mycompany/app/dialog/DialogEditCmd;->C(Lcom/mycompany/app/dialog/DialogEditCmd;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
