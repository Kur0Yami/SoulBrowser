.class Lcom/mycompany/app/dialog/DialogSetPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPopup$4;->c:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPopup$4;->c:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2, p3}, Lcom/mycompany/app/main/MainDragAdapter;->c(I)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    long-to-int p3, p4

    .line 13
    invoke-static {p1, p3, p2}, Lcom/mycompany/app/dialog/DialogSetPopup;->B(Lcom/mycompany/app/dialog/DialogSetPopup;IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
