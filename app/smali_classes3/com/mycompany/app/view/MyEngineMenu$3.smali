.class Lcom/mycompany/app/view/MyEngineMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEngineMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEngineMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$3;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu$3;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/view/MyEngineMenu;->p:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEngineMenu;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
