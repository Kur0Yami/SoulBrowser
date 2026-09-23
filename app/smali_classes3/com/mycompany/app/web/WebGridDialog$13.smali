.class Lcom/mycompany/app/web/WebGridDialog$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$13;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->j:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$13;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebGridDialog;->u(Lcom/mycompany/app/web/WebGridDialog;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/web/WebGridDialog;->s(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
