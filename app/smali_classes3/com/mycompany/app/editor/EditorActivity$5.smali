.class Lcom/mycompany/app/editor/EditorActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$5;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const/16 p1, 0x1c

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$5;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

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
    const/4 p1, 0x0

    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    invoke-static {v1, v0, p1}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Lcom/mycompany/app/editor/EditorActivity;->P1:Landroid/net/Uri;

    .line 20
    .line 21
    return-void
.end method
