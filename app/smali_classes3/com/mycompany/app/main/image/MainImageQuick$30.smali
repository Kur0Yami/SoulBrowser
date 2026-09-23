.class Lcom/mycompany/app/main/image/MainImageQuick$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$30;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$30;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->R1:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-object v1, p1, Lcom/mycompany/app/main/image/MainImageQuick;->R1:Lcom/mycompany/app/view/MyDialogLinear;

    .line 14
    .line 15
    iput-object v1, p1, Lcom/mycompany/app/main/image/MainImageQuick;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
