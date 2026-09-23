.class Lcom/mycompany/app/editor/EditorActivity$7;
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
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$7;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$7;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/mycompany/app/editor/EditorActivity;->P1:Landroid/net/Uri;

    .line 5
    .line 6
    const/16 p1, 0x9

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->O4(Lcom/mycompany/app/main/MainActivity;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
