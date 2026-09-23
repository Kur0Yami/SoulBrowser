.class public final Lcom/google/android/material/datepicker/CompositeDateValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/CompositeDateValidator;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/google/android/material/datepicker/CompositeDateValidator$1;

.field public static final h:Lcom/google/android/material/datepicker/CompositeDateValidator$2;


# instance fields
.field public final c:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->g:Lcom/google/android/material/datepicker/CompositeDateValidator$1;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator$2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->h:Lcom/google/android/material/datepicker/CompositeDateValidator$2;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/material/datepicker/CompositeDateValidator$3;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e0(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->a(Ljava/util/ArrayList;J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object p1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->getId()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ne v0, p1, :cond_2

    .line 34
    .line 35
    :goto_0
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;

    .line 7
    .line 8
    invoke-interface {p2}, Lcom/google/android/material/datepicker/CompositeDateValidator$Operator;->getId()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
