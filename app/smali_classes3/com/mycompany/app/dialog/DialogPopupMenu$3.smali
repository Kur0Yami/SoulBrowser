.class Lcom/mycompany/app/dialog/DialogPopupMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$3;->a:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$3;->a:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->b0:Lcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->j0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v1, p1, v2, v0}, Lcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
