.class Lcom/mycompany/app/main/image/MainImageQuick$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$7;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$7;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImageQuick;->C0()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/image/MainImageQuick;->E0(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImageQuick;->finish()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
