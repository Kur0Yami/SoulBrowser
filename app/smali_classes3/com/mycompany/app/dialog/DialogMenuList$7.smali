.class Lcom/mycompany/app/dialog/DialogMenuList$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$7;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$7;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogMenuList;->c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
