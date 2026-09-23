.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$5;->c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$5;->c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->p:Lcom/mycompany/app/view/MyManagerGrid;

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 13
    .line 14
    return p1
.end method
